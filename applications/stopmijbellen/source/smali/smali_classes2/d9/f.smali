.class public Ld9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld9/h;


# direct methods
.method public constructor <init>(Ld9/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld9/f;->a:Ld9/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld9/f;->a:Ld9/h;

    iget-object v1, v0, Ld9/h;->b:Ld9/h$c;

    invoke-interface {v1, v0}, Ld9/h$c;->c(Ld9/h;)V

    return-void
.end method
