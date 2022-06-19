.class public Lcom/androidplot/xy/XYLegendItem;
.super Ljava/lang/Object;
.source "XYLegendItem.java"

# interfaces
.implements Lcom/androidplot/ui/widget/LegendItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYLegendItem$Type;
    }
.end annotation


# instance fields
.field public final item:Ljava/lang/Object;

.field private final text:Ljava/lang/String;

.field public final type:Lcom/androidplot/xy/XYLegendItem$Type;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYLegendItem$Type;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    .line 20
    iput-object p2, p0, Lcom/androidplot/xy/XYLegendItem;->item:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Lcom/androidplot/xy/XYLegendItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/androidplot/xy/XYLegendItem;->text:Ljava/lang/String;

    return-object v0
.end method
