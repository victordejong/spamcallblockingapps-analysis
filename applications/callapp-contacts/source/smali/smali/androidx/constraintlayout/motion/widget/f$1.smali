.class final Landroidx/constraintlayout/motion/widget/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/f;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/motion/widget/f$o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/motion/widget/f;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/f;)V
    .locals 0

    .line 177
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/f$1;->a:Landroidx/constraintlayout/motion/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 177
    check-cast p1, Landroidx/constraintlayout/motion/widget/f$o;

    check-cast p2, Landroidx/constraintlayout/motion/widget/f$o;

    .line 1180
    iget p1, p1, Landroidx/constraintlayout/motion/widget/f$o;->a:I

    iget p2, p2, Landroidx/constraintlayout/motion/widget/f$o;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
