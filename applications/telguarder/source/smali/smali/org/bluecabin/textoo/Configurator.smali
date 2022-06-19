.class public abstract Lorg/bluecabin/textoo/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bluecabin/textoo/TextooContext;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/bluecabin/textoo/TextooContext;->assertNotNull()V

    return-void
.end method


# virtual methods
.method public abstract apply()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
