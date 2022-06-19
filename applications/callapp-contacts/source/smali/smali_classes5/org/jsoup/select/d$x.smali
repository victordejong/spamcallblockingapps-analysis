.class public final Lorg/jsoup/select/d$x;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "x"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 1

    .line 1241
    iget-object p1, p2, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast p1, Lorg/jsoup/nodes/h;

    if-eqz p1, :cond_0

    .line 408
    instance-of v0, p1, Lorg/jsoup/nodes/f;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->q()I

    move-result p2

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->m()Lorg/jsoup/select/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/select/c;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":last-child"

    return-object v0
.end method
