.class public Ls$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls;->O()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    iput-object p1, p0, Ls$d;->a:Ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Ls$d;->a:Ls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ls;->J0(Lrb;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
