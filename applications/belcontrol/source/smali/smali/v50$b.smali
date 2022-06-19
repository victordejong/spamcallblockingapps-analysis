.class public Lv50$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lv50;

.field public final b:Landroid/content/Intent;

.field public final c:I


# direct methods
.method public constructor <init>(Lv50;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv50$b;->a:Lv50;

    iput-object p2, p0, Lv50$b;->b:Landroid/content/Intent;

    iput p3, p0, Lv50$b;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lv50$b;->a:Lv50;

    iget-object v1, p0, Lv50$b;->b:Landroid/content/Intent;

    iget v2, p0, Lv50$b;->c:I

    invoke-virtual {v0, v1, v2}, Lv50;->a(Landroid/content/Intent;I)Z

    return-void
.end method
