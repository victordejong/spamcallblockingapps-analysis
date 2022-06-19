.class public Ln50$d;
.super Lf10;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lf10;-><init>(II)V

    iput-object p1, p0, Ln50$d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ln10;)V
    .locals 1

    new-instance p1, Ln70;

    iget-object v0, p0, Ln50$d;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Ln70;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ln70;->c(Z)V

    return-void
.end method
