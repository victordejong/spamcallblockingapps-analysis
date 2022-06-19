.class public Lmi$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmi$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:[Lyh;

.field public final b:Lri;

.field public final c:Lti;


# direct methods
.method public varargs constructor <init>([Lyh;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyh;

    iput-object v0, p0, Lmi$e;->a:[Lyh;

    new-instance v1, Lri;

    invoke-direct {v1}, Lri;-><init>()V

    iput-object v1, p0, Lmi$e;->b:Lri;

    new-instance v2, Lti;

    invoke-direct {v2}, Lti;-><init>()V

    iput-object v2, p0, Lmi$e;->c:Lti;

    array-length v3, p1

    aput-object v1, v0, v3

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v2, v0, p1

    return-void
.end method


# virtual methods
.method public a(Leh;)Leh;
    .locals 4

    iget-object v0, p0, Lmi$e;->b:Lri;

    iget-boolean v1, p1, Leh;->c:Z

    invoke-virtual {v0, v1}, Lri;->p(Z)V

    new-instance v0, Leh;

    iget-object v1, p0, Lmi$e;->c:Lti;

    iget v2, p1, Leh;->a:F

    invoke-virtual {v1, v2}, Lti;->c(F)F

    move-result v1

    iget-object v2, p0, Lmi$e;->c:Lti;

    iget v3, p1, Leh;->b:F

    invoke-virtual {v2, v3}, Lti;->b(F)F

    move-result v2

    iget-boolean p1, p1, Leh;->c:Z

    invoke-direct {v0, v1, v2, p1}, Leh;-><init>(FFZ)V

    return-object v0
.end method

.method public getAudioProcessors()[Lyh;
    .locals 1

    iget-object v0, p0, Lmi$e;->a:[Lyh;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 1

    iget-object v0, p0, Lmi$e;->c:Lti;

    invoke-virtual {v0, p1, p2}, Lti;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    iget-object v0, p0, Lmi$e;->b:Lri;

    invoke-virtual {v0}, Lri;->j()J

    move-result-wide v0

    return-wide v0
.end method
