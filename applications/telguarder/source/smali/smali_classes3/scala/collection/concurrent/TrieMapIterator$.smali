.class public final Lscala/collection/concurrent/TrieMapIterator$;
.super Ljava/lang/Object;
.source "TrieMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/TrieMapIterator$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/TrieMapIterator$;

    invoke-direct {v0}, Lscala/collection/concurrent/TrieMapIterator$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/concurrent/TrieMapIterator$;->MODULE$:Lscala/collection/concurrent/TrieMapIterator$;

    return-void
.end method


# virtual methods
.method public $lessinit$greater$default$3()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
