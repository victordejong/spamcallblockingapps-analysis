.class final Lcom/google/android/material/progressindicator/e$1;
.super Landroidx/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/e/a/c<",
        "Lcom/google/android/material/progressindicator/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Landroidx/e/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)F
    .locals 1

    .line 222
    check-cast p1, Lcom/google/android/material/progressindicator/e;

    .line 2225
    invoke-static {p1}, Lcom/google/android/material/progressindicator/e;->a(Lcom/google/android/material/progressindicator/e;)F

    move-result p1

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;F)V
    .locals 1

    .line 222
    check-cast p1, Lcom/google/android/material/progressindicator/e;

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    .line 1230
    invoke-static {p1, p2}, Lcom/google/android/material/progressindicator/e;->a(Lcom/google/android/material/progressindicator/e;F)V

    return-void
.end method
