.class public Lg9/m;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lg9/n$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg9/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lg9/n$a;

    .line 2
    iget p1, p2, Lg9/n$a;->b:I

    return p1
.end method
