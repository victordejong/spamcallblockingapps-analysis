.class public final Lorg/jsoup/c/e;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/jsoup/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    iput p2, p0, Lorg/jsoup/c/e;->a:I

    return-void
.end method

.method public static b()Lorg/jsoup/c/e;
    .locals 2

    .line 28
    new-instance v0, Lorg/jsoup/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/c/e;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 2

    .line 20
    invoke-virtual {p0}, Lorg/jsoup/c/e;->size()I

    move-result v0

    iget v1, p0, Lorg/jsoup/c/e;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
