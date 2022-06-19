.class final Landroidx/constraintlayout/a/d$b;
.super Landroidx/constraintlayout/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Landroidx/constraintlayout/a/d;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/a/d$b;->g:Landroidx/constraintlayout/a/d;

    invoke-direct {p0}, Landroidx/constraintlayout/a/b;-><init>()V

    .line 90
    new-instance p1, Landroidx/constraintlayout/a/i;

    invoke-direct {p1, p0, p2}, Landroidx/constraintlayout/a/i;-><init>(Landroidx/constraintlayout/a/b;Landroidx/constraintlayout/a/c;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/d$b;->e:Landroidx/constraintlayout/a/b$a;

    return-void
.end method
