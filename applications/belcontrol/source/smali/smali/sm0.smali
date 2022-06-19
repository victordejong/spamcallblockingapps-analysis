.class public Lsm0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lrm0;

.field public b:Ljava/lang/Exception;

.field public c:Z

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lrm0;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsm0;->a:Lrm0;

    iput-object p2, p0, Lsm0;->b:Ljava/lang/Exception;

    iput-object p4, p0, Lsm0;->d:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lsm0;->c:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lsm0;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lsm0;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public c()Lrm0;
    .locals 1

    iget-object v0, p0, Lsm0;->a:Lrm0;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lsm0;->c:Z

    return v0
.end method
