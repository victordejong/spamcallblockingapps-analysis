.class final Landroidx/media2/session/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/j;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/j;


# direct methods
.method constructor <init>(Landroidx/media2/session/j;)V
    .locals 0

    .line 202
    iput-object p1, p0, Landroidx/media2/session/j$3;->a:Landroidx/media2/session/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/h;)V
    .locals 2

    .line 2060
    iget-object v0, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/h$21;

    invoke-direct {v1, p1}, Landroidx/media2/session/h$21;-><init>(Landroidx/media2/session/h;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void
.end method
