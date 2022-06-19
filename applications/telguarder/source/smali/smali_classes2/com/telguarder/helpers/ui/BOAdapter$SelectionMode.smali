.class public final enum Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;
.super Ljava/lang/Enum;
.source "BOAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/BOAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

.field public static final enum MULTIPLE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

.field public static final enum NONE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

.field public static final enum SINGLE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 267
    new-instance v0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->NONE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    new-instance v1, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    const-string v3, "SINGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->SINGLE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    new-instance v3, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    const-string v5, "MULTIPLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->MULTIPLE:Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 266
    sput-object v5, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->$VALUES:[Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;
    .locals 1

    .line 266
    const-class v0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;
    .locals 1

    .line 266
    sget-object v0, Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->$VALUES:[Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    invoke-virtual {v0}, [Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/helpers/ui/BOAdapter$SelectionMode;

    return-object v0
.end method
