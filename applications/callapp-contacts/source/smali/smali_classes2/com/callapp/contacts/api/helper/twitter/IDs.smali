.class public Lcom/callapp/contacts/api/helper/twitter/IDs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[J
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "ids"
    .end annotation
.end field

.field public final b:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "previous_cursor"
    .end annotation
.end field

.field public final c:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "next_cursor"
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;


# direct methods
.method public constructor <init>(Ljava/lang/Long;[JLjava/lang/Long;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->b:Ljava/lang/Long;

    .line 19
    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->a:[J

    .line 20
    iput-object p3, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method getIDs()[J
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->a:[J

    return-object v0
.end method

.method getNextCursor()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getRateLimit()Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->d:Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    return-object v0
.end method

.method setRateLimit(Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/IDs;->d:Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    return-void
.end method
