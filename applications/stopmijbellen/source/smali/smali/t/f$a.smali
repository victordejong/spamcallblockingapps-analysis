.class public Lt/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/f;->m(Lt/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lt/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lt/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lt/h;

    check-cast p2, Lt/h;

    .line 2
    iget p1, p1, Lt/h;->b:I

    iget p2, p2, Lt/h;->b:I

    sub-int/2addr p1, p2

    return p1
.end method
