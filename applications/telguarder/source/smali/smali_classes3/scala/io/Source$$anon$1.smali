.class public final Lscala/io/Source$$anon$1;
.super Lscala/io/Source;
.source "Source.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Source$;->fromIterable(Lscala/collection/Iterable;)Lscala/io/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final iter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Iterable;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lscala/io/Source;-><init>()V

    .line 35
    invoke-interface {p1}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/io/Source$$anon$1;->iter:Lscala/collection/Iterator;

    return-void
.end method


# virtual methods
.method public iter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lscala/io/Source$$anon$1;->iter:Lscala/collection/Iterator;

    return-object v0
.end method
