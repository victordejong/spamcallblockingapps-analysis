.class public final enum Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;",
        "",
        "value",
        "",
        "view",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getValue",
        "()I",
        "getView",
        "()Ljava/lang/String;",
        "toString",
        "CALL_LOG_CONTACT_LIST",
        "MISSED_CALL_NOT_ANSWERED",
        "SEARCH",
        "CALLAPP_PLUS",
        "INSIGHTS",
        "SMS",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field public static final enum CALLAPP_PLUS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field public static final enum CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field public static final enum INSIGHTS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field public static final enum MISSED_CALL_NOT_ANSWERED:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field public static final enum SEARCH:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field public static final enum SMS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;


# instance fields
.field private final value:I

.field private final view:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    new-instance v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const v2, 0x7f120855

    .line 85
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026ew_call_log_contact_list)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CALL_LOG_CONTACT_LIST"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const v2, 0x7f120859

    .line 86
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026view_missed_not_answered)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "MISSED_CALL_NOT_ANSWERED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->MISSED_CALL_NOT_ANSWERED:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const v2, 0x7f120862

    .line 87
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.string.who_view_search)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "SEARCH"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->SEARCH:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const v2, 0x7f120856

    .line 88
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026ng.who_view_callapp_plus)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "CALLAPP_PLUS"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALLAPP_PLUS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const v2, 0x7f120858

    .line 89
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.string.who_view_insights)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "INSIGHTS"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->INSIGHTS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    aput-object v1, v0, v4

    new-instance v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const v2, 0x7f120863

    .line 90
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.string.who_view_sms)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "SMS"

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->SMS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->$VALUES:[Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->value:I

    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->view:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;
    .locals 1

    const-class v0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->$VALUES:[Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->value:I

    return v0
.end method

.method public final getView()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->view:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ENTRYPOINT(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", view=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->view:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
