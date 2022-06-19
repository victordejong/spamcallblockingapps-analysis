.class public abstract Lscala/collection/immutable/HashSet$LeafHashSet;
.super Lscala/collection/immutable/HashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LeafHashSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashSet<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lscala/collection/immutable/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hash()I
.end method
