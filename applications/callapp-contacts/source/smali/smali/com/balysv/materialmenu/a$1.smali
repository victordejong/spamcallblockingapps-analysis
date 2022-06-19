.class final Lcom/balysv/materialmenu/a$1;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/balysv/materialmenu/a;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/balysv/materialmenu/a;


# direct methods
.method constructor <init>(Lcom/balysv/materialmenu/a;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/balysv/materialmenu/a$1;->a:Lcom/balysv/materialmenu/a;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 705
    check-cast p1, Lcom/balysv/materialmenu/a;

    .line 1718
    iget p1, p1, Lcom/balysv/materialmenu/a;->d:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 705
    check-cast p1, Lcom/balysv/materialmenu/a;

    check-cast p2, Ljava/lang/Float;

    .line 2722
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/balysv/materialmenu/a;->d:F

    .line 2723
    invoke-virtual {p1}, Lcom/balysv/materialmenu/a;->invalidateSelf()V

    return-void
.end method
