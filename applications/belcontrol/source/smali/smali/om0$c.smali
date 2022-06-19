.class public Lom0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lom0;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lom0;


# direct methods
.method public constructor <init>(Lom0;)V
    .locals 0

    iput-object p1, p0, Lom0$c;->a:Lom0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lom0$c;->a:Lom0;

    invoke-static {v0}, Lom0;->c(Lom0;)V

    return-void
.end method
