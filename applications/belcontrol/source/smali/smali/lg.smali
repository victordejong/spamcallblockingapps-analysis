.class public final synthetic Llg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final b:Lag$b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Llg;->b:Lag$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Llg;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Llg;->b:Lag$b;

    invoke-static {v0, v1}, Lmg;->w(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    return-void
.end method
