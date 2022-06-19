.class public Lai0$k;
.super Lai0$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public a:F

.field public final synthetic b:Lai0;


# direct methods
.method public constructor <init>(Lai0;)V
    .locals 1

    iput-object p1, p0, Lai0$k;->b:Lai0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai0$j;-><init>(Lai0;Lai0$a;)V

    const/4 p1, 0x0

    iput p1, p0, Lai0$k;->a:F

    return-void
.end method

.method public synthetic constructor <init>(Lai0;Lai0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lai0$k;-><init>(Lai0;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lai0$k;->a:F

    iget-object v1, p0, Lai0$k;->b:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lai0$k;->a:F

    return-void
.end method
