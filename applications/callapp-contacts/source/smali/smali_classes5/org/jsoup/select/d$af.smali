.class public final Lorg/jsoup/select/d$af;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "af"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 584
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 1

    .line 587
    instance-of v0, p1, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->l()Lorg/jsoup/nodes/h;

    move-result-object p1

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":root"

    return-object v0
.end method
