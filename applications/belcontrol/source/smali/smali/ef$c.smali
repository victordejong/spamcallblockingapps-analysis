.class public abstract Lef$c;
.super Lef$e;
.source ""

# interfaces
.implements Lef$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lef$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ldf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldf;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(String, Class<?>) must be called on implementaions of KeyedFactory"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/Class;)Ldf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldf;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
