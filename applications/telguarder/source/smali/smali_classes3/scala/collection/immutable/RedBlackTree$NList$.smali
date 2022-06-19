.class public final Lscala/collection/immutable/RedBlackTree$NList$;
.super Ljava/lang/Object;
.source "RedBlackTree.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NList$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/RedBlackTree$NList$;

    invoke-direct {v0}, Lscala/collection/immutable/RedBlackTree$NList$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/RedBlackTree$NList$;->MODULE$:Lscala/collection/immutable/RedBlackTree$NList$;

    return-void
.end method


# virtual methods
.method public cons(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)Lscala/collection/immutable/RedBlackTree$NList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "TB;>;"
        }
    .end annotation

    .line 409
    new-instance v0, Lscala/collection/immutable/RedBlackTree$NList;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/RedBlackTree$NList;-><init>(Ljava/lang/Object;Lscala/collection/immutable/RedBlackTree$NList;)V

    return-object v0
.end method

.method public foldLeft(Lscala/collection/immutable/RedBlackTree$NList;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/RedBlackTree$NList<",
            "TA;>;TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$NList;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 416
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$NList;->tail()Lscala/collection/immutable/RedBlackTree$NList;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p2
.end method
