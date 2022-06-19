.class final Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;
.super Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamedRequestBody"
.end annotation


# instance fields
.field private final a:Lc/v;


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 862
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;-><init>()V

    .line 860
    new-instance v0, Lc/v;

    const-wide/16 v1, 0x2000

    invoke-direct {v0, v1, v2}, Lc/v;-><init>(J)V

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;->a:Lc/v;

    .line 1048
    iget-object v0, v0, Lc/v;->f:Lc/ab;

    .line 2001
    invoke-static {v0}, Lc/r;->a(Lc/ab;)Lc/g;

    move-result-object v0

    .line 863
    invoke-virtual {p0, v0, p1, p2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;->a(Lc/g;J)V

    return-void
.end method


# virtual methods
.method public final isOneShot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final writeTo(Lc/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    .line 872
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody;->a:Lc/v;

    .line 2124
    iget-object v1, v1, Lc/v;->g:Lc/ad;

    const-wide/16 v2, 0x2000

    .line 872
    invoke-interface {v1, v0, v2, v3}, Lc/ad;->read(Lc/f;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3073
    iget-wide v1, v0, Lc/f;->b:J

    .line 873
    invoke-interface {p1, v0, v1, v2}, Lc/g;->write(Lc/f;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
