.class public final synthetic Lnq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lpq0;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lpq0;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq0;->a:Lpq0;

    iput-object p2, p0, Lnq0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lnq0;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lnq0;->a:Lpq0;

    iget-object v1, p0, Lnq0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lnq0;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, p1}, Lpq0;->f(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
