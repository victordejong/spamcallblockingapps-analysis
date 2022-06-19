.class public Lf2/b$b;
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
    iput-object p1, p0, Lf2/b$b;->a:Lf2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Le2/g;Le2/b;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lf2/b$b;->a:Lf2/b;

    sget v0, Lf2/b;->t:I

    .line 2
    invoke-virtual {p2, p1}, Lf2/b;->k(Le2/g;)V

    return-void
.end method
