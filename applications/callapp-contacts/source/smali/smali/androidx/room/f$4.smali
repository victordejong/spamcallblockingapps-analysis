.class final Landroidx/room/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/f;


# direct methods
.method constructor <init>(Landroidx/room/f;)V
    .locals 0

    .line 134
    iput-object p1, p0, Landroidx/room/f$4;->a:Landroidx/room/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 137
    iget-object v0, p0, Landroidx/room/f$4;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->d:Landroidx/room/e;

    iget-object v1, p0, Landroidx/room/f$4;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->e:Landroidx/room/e$b;

    invoke-virtual {v0, v1}, Landroidx/room/e;->b(Landroidx/room/e$b;)V

    return-void
.end method
