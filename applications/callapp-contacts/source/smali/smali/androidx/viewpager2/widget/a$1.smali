.class final Landroidx/viewpager2/widget/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/a;)V
    .locals 0

    .line 94
    iput-object p1, p0, Landroidx/viewpager2/widget/a$1;->a:Landroidx/viewpager2/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 94
    check-cast p1, [I

    check-cast p2, [I

    const/4 v0, 0x0

    .line 1097
    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    return p1
.end method
