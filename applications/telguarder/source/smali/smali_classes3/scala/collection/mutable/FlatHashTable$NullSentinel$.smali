.class public Lscala/collection/mutable/FlatHashTable$NullSentinel$;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/FlatHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullSentinel$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/mutable/FlatHashTable$NullSentinel$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/FlatHashTable$NullSentinel$;

    invoke-direct {v0}, Lscala/collection/mutable/FlatHashTable$NullSentinel$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/FlatHashTable$NullSentinel$;->MODULE$:Lscala/collection/mutable/FlatHashTable$NullSentinel$;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NullSentinel"

    return-object v0
.end method
