.class public final Lorg/jsoup/select/d$v;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 0

    .line 1241
    iget-object p1, p2, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast p1, Lorg/jsoup/nodes/h;

    if-eqz p1, :cond_0

    .line 570
    instance-of p1, p1, Lorg/jsoup/nodes/f;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/nodes/h;->q()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":first-child"

    return-object v0
.end method
