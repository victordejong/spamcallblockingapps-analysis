.class public Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/facebook/rebound/g;

.field public static b:Lcom/facebook/rebound/g;

.field public static c:Lcom/facebook/rebound/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x4067c00000000000L    # 190.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/g;->a(DD)Lcom/facebook/rebound/g;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/g;->a(DD)Lcom/facebook/rebound/g;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->b:Lcom/facebook/rebound/g;

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/g;->a(DD)Lcom/facebook/rebound/g;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
