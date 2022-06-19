.class Lb/h/h/g$b$a;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/g$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lb/h/k/a;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lb/h/h/g$b;


# direct methods
.method constructor <init>(Lb/h/h/g$b;Lb/h/k/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/h/h/g$b$a;->f:Lb/h/h/g$b;

    iput-object p2, p0, Lb/h/h/g$b$a;->d:Lb/h/k/a;

    iput-object p3, p0, Lb/h/h/g$b$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/h/g$b$a;->d:Lb/h/k/a;

    iget-object v1, p0, Lb/h/h/g$b$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/h/k/a;->a(Ljava/lang/Object;)V

    return-void
.end method
