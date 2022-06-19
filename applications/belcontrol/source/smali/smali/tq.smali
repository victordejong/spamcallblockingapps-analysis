.class public final synthetic Ltq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lwq;


# direct methods
.method public constructor <init>(Lwq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq;->a:Lwq;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ltq;->a:Lwq;

    invoke-virtual {v0}, Lwq;->i()V

    return-void
.end method
