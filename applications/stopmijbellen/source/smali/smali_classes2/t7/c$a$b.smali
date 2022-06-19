.class public Lt7/c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt7/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt7/c$a;


# direct methods
.method public constructor <init>(Lt7/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt7/c$a$b;->a:Lt7/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt7/c$a$b;->a:Lt7/c$a;

    iget-object v0, v0, Lt7/c$a;->a:Lt7/c;

    iget-object v1, v0, Lt7/c;->e:Lk7/l;

    invoke-static {v0, v1}, Li4/d;->p(Lk7/m;Lk7/l;)V

    return-void
.end method
