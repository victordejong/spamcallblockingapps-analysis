.class final Lcom/verizon/ads/AdAdapterRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Class;

.field final c:Lcom/verizon/ads/ContentFilter;

.field final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/verizon/ads/AdAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/verizon/ads/AdAdapter;",
            ">;",
            "Lcom/verizon/ads/ContentFilter;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/verizon/ads/AdAdapterRegistration;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/verizon/ads/AdAdapterRegistration;->b:Ljava/lang/Class;

    .line 22
    iput-object p3, p0, Lcom/verizon/ads/AdAdapterRegistration;->d:Ljava/lang/Class;

    .line 23
    iput-object p4, p0, Lcom/verizon/ads/AdAdapterRegistration;->c:Lcom/verizon/ads/ContentFilter;

    return-void
.end method
