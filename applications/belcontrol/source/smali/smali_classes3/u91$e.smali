.class public Lu91$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu91;->k(Lr61$b;ILr61$c;Lv91;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv91;

.field public final synthetic b:Lu91;


# direct methods
.method public constructor <init>(Lu91;Lv91;)V
    .locals 0

    iput-object p1, p0, Lu91$e;->b:Lu91;

    iput-object p2, p0, Lu91$e;->a:Lv91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lu91$e;->b:Lu91;

    iget-object p2, p0, Lu91$e;->a:Lv91;

    sget-object v0, Lr61$b;->f:Lr61$b;

    invoke-virtual {p1, p2, v0}, Lu91;->h(Lv91;Lr61$b;)V

    return-void
.end method
