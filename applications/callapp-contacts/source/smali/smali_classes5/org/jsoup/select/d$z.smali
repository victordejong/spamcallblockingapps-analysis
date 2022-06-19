.class public final Lorg/jsoup/select/d$z;
.super Lorg/jsoup/select/d$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 482
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/d$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jsoup/nodes/h;)I
    .locals 0

    .line 486
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->q()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-child"

    return-object v0
.end method
