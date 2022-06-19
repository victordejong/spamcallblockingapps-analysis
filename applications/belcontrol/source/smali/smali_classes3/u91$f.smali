.class public Lu91$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu91;->g(Landroid/app/AlertDialog$Builder;Lv91;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv91;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lu91;


# direct methods
.method public constructor <init>(Lu91;Lv91;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu91$f;->c:Lu91;

    iput-object p2, p0, Lu91$f;->a:Lv91;

    iput-object p3, p0, Lu91$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lu91$f;->a:Lv91;

    check-cast p1, Lr91;

    iget-object p2, p0, Lu91$f;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lr91;->q(Ljava/lang/String;)V

    iget-object p1, p0, Lu91$f;->a:Lv91;

    check-cast p1, Lr91;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lr91;->r(Ljava/lang/String;)V

    iget-object p1, p0, Lu91$f;->c:Lu91;

    iget-object p2, p0, Lu91$f;->a:Lv91;

    sget-object v0, Lr61$b;->d:Lr61$b;

    invoke-virtual {p1, p2, v0}, Lu91;->h(Lv91;Lr61$b;)V

    return-void
.end method
