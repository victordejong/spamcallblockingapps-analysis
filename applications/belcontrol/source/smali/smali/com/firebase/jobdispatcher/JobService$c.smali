.class public Lcom/firebase/jobdispatcher/JobService$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/jobdispatcher/JobService;->f(Lzp0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzp0;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/firebase/jobdispatcher/JobService$d;

.field public final synthetic d:Lcom/firebase/jobdispatcher/JobService;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/JobService;Lzp0;ZLcom/firebase/jobdispatcher/JobService$d;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/JobService$c;->d:Lcom/firebase/jobdispatcher/JobService;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/JobService$c;->a:Lzp0;

    iput-boolean p3, p0, Lcom/firebase/jobdispatcher/JobService$c;->b:Z

    iput-object p4, p0, Lcom/firebase/jobdispatcher/JobService$c;->c:Lcom/firebase/jobdispatcher/JobService$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService$c;->d:Lcom/firebase/jobdispatcher/JobService;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService$c;->a:Lzp0;

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/JobService;->d(Lzp0;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/firebase/jobdispatcher/JobService$c;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService$c;->c:Lcom/firebase/jobdispatcher/JobService$d;

    invoke-virtual {v1, v0}, Lcom/firebase/jobdispatcher/JobService$d;->a(I)V

    :cond_0
    return-void
.end method
