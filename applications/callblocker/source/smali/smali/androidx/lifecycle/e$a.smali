.class public final enum Landroidx/lifecycle/e$a;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/lifecycle/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/e$a;

.field public static final enum ON_ANY:Landroidx/lifecycle/e$a;

.field public static final enum ON_CREATE:Landroidx/lifecycle/e$a;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/e$a;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/e$a;

.field public static final enum ON_RESUME:Landroidx/lifecycle/e$a;

.field public static final enum ON_START:Landroidx/lifecycle/e$a;

.field public static final enum ON_STOP:Landroidx/lifecycle/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_CREATE"

    invoke-direct {v0, v1, v3}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    .line 136
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_START"

    invoke-direct {v0, v1, v4}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    .line 140
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_RESUME"

    invoke-direct {v0, v1, v5}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    .line 144
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_PAUSE"

    invoke-direct {v0, v1, v6}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    .line 148
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_STOP"

    invoke-direct {v0, v1, v7}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    .line 152
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    .line 156
    new-instance v0, Landroidx/lifecycle/e$a;

    const-string/jumbo v1, "ON_ANY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/e$a;->ON_ANY:Landroidx/lifecycle/e$a;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [Landroidx/lifecycle/e$a;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroidx/lifecycle/e$a;->ON_ANY:Landroidx/lifecycle/e$a;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/lifecycle/e$a;->$VALUES:[Landroidx/lifecycle/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/e$a;
    .locals 1

    .prologue
    .line 127
    const-class v0, Landroidx/lifecycle/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/e$a;

    return-object v0
.end method

.method public static values()[Landroidx/lifecycle/e$a;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroidx/lifecycle/e$a;->$VALUES:[Landroidx/lifecycle/e$a;

    invoke-virtual {v0}, [Landroidx/lifecycle/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/e$a;

    return-object v0
.end method
