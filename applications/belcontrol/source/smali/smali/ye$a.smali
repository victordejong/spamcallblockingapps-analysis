.class public Lye$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lye;


# direct methods
.method public constructor <init>(Lye;)V
    .locals 0

    iput-object p1, p0, Lye$a;->a:Lye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lye$a;->a:Lye;

    invoke-virtual {v0}, Lye;->f()V

    iget-object v0, p0, Lye$a;->a:Lye;

    invoke-virtual {v0}, Lye;->g()V

    return-void
.end method
