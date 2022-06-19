.class public Lc2$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lc2;


# direct methods
.method public constructor <init>(Lc2;)V
    .locals 0

    iput-object p1, p0, Lc2$b;->a:Lc2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc2$b;->a:Lc2;

    invoke-virtual {v0}, Lc2;->e()V

    return-void
.end method
