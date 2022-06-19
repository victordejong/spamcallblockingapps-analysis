.class public Lf2/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf2/b;


# direct methods
.method public constructor <init>(Lf2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/b$d;->a:Lf2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Le2/g;Le2/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf2/b$d;->a:Lf2/b;

    .line 2
    iget-object p2, p1, Lf2/b;->d:Lf2/b$h;

    .line 3
    invoke-virtual {p1}, Lf2/b;->d()I

    move-result v0

    .line 4
    invoke-interface {p2, p1, v0}, Lf2/b$h;->g(Lf2/b;I)V

    .line 5
    iget-object p1, p0, Lf2/b$d;->a:Lf2/b;

    invoke-virtual {p1}, Landroidx/fragment/app/l;->dismiss()V

    return-void
.end method
