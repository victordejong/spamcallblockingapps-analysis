.class synthetic Lcom/callapp/contacts/widget/TopBarFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/TopBarFragment;
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
    .locals 4

    .line 165
    invoke-static {}, Lcom/balysv/materialmenu/a$b;->values()[Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/widget/TopBarFragment$2;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v2}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/callapp/contacts/widget/TopBarFragment$2;->b:[I

    sget-object v3, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v3}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :catch_1
    invoke-static {}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->values()[Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/callapp/contacts/widget/TopBarFragment$2;->a:[I

    :try_start_2
    sget-object v3, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/callapp/contacts/widget/TopBarFragment$2;->a:[I

    sget-object v2, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->TOGGLE_MENU:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
