.class public Le2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/e;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le2/e;


# direct methods
.method public constructor <init>(Le2/e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/e$a;->b:Le2/e;

    iput p2, p0, Le2/e$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le2/e$a;->b:Le2/e;

    iget-object v0, v0, Le2/e;->a:Le2/g;

    iget-object v0, v0, Le2/g;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 2
    iget-object v0, p0, Le2/e$a;->b:Le2/e;

    iget-object v0, v0, Le2/e;->a:Le2/g;

    iget-object v0, v0, Le2/g;->c:Le2/g$a;

    iget-object v0, v0, Le2/g$a;->G:Landroidx/recyclerview/widget/RecyclerView$m;

    iget v1, p0, Le2/e$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->w0(I)V

    return-void
.end method
