.class public Ldl0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldl0;->g(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ldl0;


# direct methods
.method public constructor <init>(Ldl0;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ldl0$b;->b:Ldl0;

    iput-object p2, p0, Ldl0$b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ldl0$b;->b:Ldl0;

    invoke-static {v0}, Ldl0;->a(Ldl0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldl0$b;->b:Ldl0;

    iget-object v1, p0, Ldl0$b;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Ldl0;->b(Ldl0;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
