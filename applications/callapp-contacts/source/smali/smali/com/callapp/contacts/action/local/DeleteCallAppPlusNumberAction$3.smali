.class synthetic Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    invoke-static {}, Lcom/callapp/contacts/action/Action$ContextType;->values()[Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$3;->a:[I

    :try_start_0
    sget-object v1, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    invoke-virtual {v1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$3;->a:[I

    sget-object v1, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_STARRED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    invoke-virtual {v1}, Lcom/callapp/contacts/action/Action$ContextType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
