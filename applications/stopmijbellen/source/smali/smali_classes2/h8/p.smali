.class public final synthetic Lh8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/p;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lh8/p;->a:Landroid/content/Context;

    .line 1
    :try_start_0
    invoke-static {v0}, Lf8/g;->v(Landroid/content/Context;)V

    .line 2
    const-class v1, Lh8/k;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v1

    .line 3
    new-instance v2, Ly2/p;

    invoke-direct {v2, v0}, Ly2/p;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v3, Ld9/h$a;

    invoke-direct {v3, v2, v1}, Ld9/h$a;-><init>(Ld9/c;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 5
    new-instance v1, Ly2/l;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 6
    iput-object v1, v3, Ld9/h$a;->d:Ld9/h$c;

    .line 7
    sget-object v0, Lt4/d;->j:Lt4/d;

    .line 8
    iput-object v0, v3, Ld9/h$a;->c:Ld9/h$b;

    .line 9
    new-instance v0, Ld9/h;

    invoke-direct {v0, v3}, Ld9/h;-><init>(Ld9/h$a;)V

    .line 10
    invoke-virtual {v0}, Ld9/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
