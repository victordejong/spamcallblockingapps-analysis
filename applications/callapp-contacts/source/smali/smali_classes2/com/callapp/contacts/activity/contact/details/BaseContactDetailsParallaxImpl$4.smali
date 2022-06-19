.class synthetic Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 503
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->values()[Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->b:[I

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->b:[I

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    :catch_2
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->values()[Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->a:[I

    :try_start_3
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->LOW_TO_MID:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->a:[I

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->MID_TO_HIGH:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
