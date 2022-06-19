.class public abstract Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Landroid/os/Handler;

.field public static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc2/b;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lc2/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-boolean v0, Lc2/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lc2/b;->b:Z

    .line 3
    sget-object v0, Lc2/b;->a:Landroid/os/Handler;

    sget-object v1, Lc2/a;->b:Lc2/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0, p1}, Lc2/b;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
