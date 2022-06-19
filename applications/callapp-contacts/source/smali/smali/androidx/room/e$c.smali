.class final Landroidx/room/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[I

.field final b:[Ljava/lang/String;

.field final c:Landroidx/room/e$b;

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/room/e$b;[I[Ljava/lang/String;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Landroidx/room/e$c;->c:Landroidx/room/e$b;

    .line 599
    iput-object p2, p0, Landroidx/room/e$c;->a:[I

    .line 600
    iput-object p3, p0, Landroidx/room/e$c;->b:[Ljava/lang/String;

    .line 601
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 602
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    .line 603
    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/e$c;->d:Ljava/util/Set;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 606
    iput-object p1, p0, Landroidx/room/e$c;->d:Ljava/util/Set;

    return-void
.end method
