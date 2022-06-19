.class public Ll1/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Ll1/n;

.field public d:Ll1/z;

.field public e:Ll1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ll1/g;Ll1/z;Ll1/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll1/g$b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Ll1/g$b;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Ll1/g$b;->c:Ll1/n;

    .line 5
    iput-object p4, p0, Ll1/g$b;->d:Ll1/z;

    .line 6
    iput-object p3, p0, Ll1/g$b;->e:Ll1/g;

    return-void
.end method
