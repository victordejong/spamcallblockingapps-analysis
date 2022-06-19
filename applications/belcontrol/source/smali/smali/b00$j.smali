.class public Lb00$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb00$j;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput p2, p0, Lb00$j;->b:I

    iput p3, p0, Lb00$j;->c:I

    iput p4, p0, Lb00$j;->d:I

    iput p5, p0, Lb00$j;->e:I

    return-void
.end method
