package android.arch.persistence.room;
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/Update.class */
public @interface Update {
    int onConflict() default 3;
}
