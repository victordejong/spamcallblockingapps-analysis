.class public interface abstract Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onThemeChanged()V
.end method
