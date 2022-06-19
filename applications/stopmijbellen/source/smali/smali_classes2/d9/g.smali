.class public Ld9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Ld9/h;


# direct methods
.method public constructor <init>(Ld9/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld9/g;->b:Ld9/h;

    iput-object p2, p0, Ld9/g;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld9/g;->b:Ld9/h;

    iget-object v1, v0, Ld9/h;->a:Ld9/h$b;

    iget-object v2, p0, Ld9/g;->a:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Ld9/h$b;->f(Ld9/h;Ljava/lang/Throwable;)V

    return-void
.end method
