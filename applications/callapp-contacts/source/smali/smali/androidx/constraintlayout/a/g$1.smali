.class final Landroidx/constraintlayout/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/a/g;->e(Landroidx/constraintlayout/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/a/g;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/a/g;)V
    .locals 0

    .line 214
    iput-object p1, p0, Landroidx/constraintlayout/a/g$1;->a:Landroidx/constraintlayout/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 214
    check-cast p1, Landroidx/constraintlayout/a/h;

    check-cast p2, Landroidx/constraintlayout/a/h;

    .line 1217
    iget p1, p1, Landroidx/constraintlayout/a/h;->b:I

    iget p2, p2, Landroidx/constraintlayout/a/h;->b:I

    sub-int/2addr p1, p2

    return p1
.end method
